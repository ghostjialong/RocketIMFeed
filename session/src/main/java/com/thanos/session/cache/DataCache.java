package com.thanos.session.cache;

public interface DataCache {

    //set
    byte[] set(String key, byte[] value);

    //setnx,set if key not exists
    //Returns If key exists = 0 else 1
    Long setnx(String key, byte[] value);

    //expire one key
    Long expire(String key, int seconds);

    //get one key
    byte[] get(String key);

    //delete key
    Long delete(String key);

}
