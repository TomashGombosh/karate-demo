function fn() {
    var config = {};
    config.getObject='/get';
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);
    return config;
}