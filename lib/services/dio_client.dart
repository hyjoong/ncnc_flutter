import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio dio;
  late CacheStore cacheStore;
  late CacheOptions defaultOptions;

  DioClient._internal() {
    dio = Dio(BaseOptions(
      baseUrl: dotenv.env['API_ADDRESS'] ?? '',
    ));

    defaultOptions = CacheOptions(
      store: MemCacheStore(),
      policy: CachePolicy.noCache,
      hitCacheOnErrorExcept: [],
      priority: CachePriority.normal,
    );

    dio.interceptors.add(DioCacheInterceptor(options: defaultOptions));
  }

  Future<Response> get(
    String path, {
    Duration? maxStale,
  }) async {
    if (maxStale != null) {
      final cacheOptions = defaultOptions.copyWith(
        policy: CachePolicy.forceCache,
        maxStale: Nullable(maxStale),
      );
      return await dio.get(
        path,
        options: Options(
          extra: cacheOptions.toExtra(),
        ),
      );
    }

    return await dio.get(path);
  }
}
