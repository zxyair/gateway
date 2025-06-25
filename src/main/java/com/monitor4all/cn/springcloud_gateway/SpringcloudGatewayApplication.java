package com.monitor4all.cn.springcloud_gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;

import java.util.function.Predicate;

@SpringBootApplication
@PropertySource(value = "classpath:application-${spring.profiles.active}.yml", ignoreResourceNotFound = true)
public class SpringcloudGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringcloudGatewayApplication.class, args);
    }

    /**
     * 读取body断言需要注册bodyPredicate
     * @return
     */
    @Bean
    public Predicate bodyPredicate(){
        return o -> true;
    }

}
