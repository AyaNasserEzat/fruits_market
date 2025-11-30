import 'package:dio/dio.dart';
import 'package:fruits_market/core/helpers/constant.dart';
import 'package:fruits_market/core/helpers/shared_pref_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] =
        // await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) !=
        //         null
        //     ? 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
        //     : null;
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5YmNmY2QzNC0zNWI2LTQzNDktOTdjNS01NjJkNTA1MzdlNzAiLCJqdGkiOiI4Nzc3ODhjNWIzZTMzMmRkNTA4NTk0YTNjNWJjY2JhZWU0YWJjNTYzNmI0MjdmZjA1YmNhMDg0Njk2ZjkyYjVmZWIzYTE3YmU1YzI0YTZhMCIsImlhdCI6MTc2NDQ2MDEzMC44NTQxNTcsIm5iZiI6MTc2NDQ2MDEzMC44NTQxNiwiZXhwIjoxNzk1OTk2MTMwLjg0OTIwNywic3ViIjoiMjQ1Iiwic2NvcGVzIjpbXX0.Q2jKRu_bsw2KdXNLXmvQVXI9HjohNKkJBHg_rvUQlfgJzAyV-FaCPQvnz5vOontIgb4tnqO4NKFO3gpivQYdhWbYcJOqOHTAKdcNYqTeWvHWhzq-EIz99ETYcFGSOJQhGBEDHY0xuxGHEyFzc0w0d9vt8NHltO9U5fipnMtPY52nlKWLu-9cE9Z1p_F5m0YFu-eqXj6qePjCGHf2oIdQDjDqtV8omvv4BaN3BL3zxo3NSX4tD1A3J3z1O_jittVECIj_GrODodb8P301fobQzNTuQi4XSk8gA3oXpyJ9QNEtAEzKoM5NOBqh--pDfIAEBWFVF8EzDacfslu52CBbAh-RJzV32kohCJ3KkYaRhiPevww3LgkpAHCAA90lVVwhzXpTO2BAjBbLHuMvQyLKryilzFJaOW_k0Na7dhAGqE7Z8p5Xk-Tc2sbsY4oD3rh6zdEYYnobxW-BmzwM5iy__nsCcJ8lf42ZuxFJtEbjeMpKCpOY7c2SiT-oY8q_pbTXg-bOrm7PC3tAQ7jU1HSpsmxH_lswH0JMuojh04jUvdUR1dTNJ1LOkrWMxYqnhAlMT4K0C8vcBG4oyfX9GnUFzQ3T3wGwZsax5UvTgEK8SV5yVo4gUOV-XHtAAU1-W9f0NCkrhcTfkQV5AdEY7kv3Sd7oqai7g8GbEYGa-ORZbtM";

    super.onRequest(options, handler);
  }
}
