function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://petstore.swagger.io/v2'
  }
  if (env == 'dev') {
    // customize
  } else if (env == 'qa') {
    config.baseUrl = 'https://petstore-qa.swagger.io/v2';
  }
  
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  
  return config;
}