package org.infinity.common.cache;

import org.infinity.core.common.utils.MyObjectMapper;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.station.model.po.StationPO;
import org.infinity.core.train.model.po.CarriagePO;
import org.infinity.core.train.model.po.SeatPO;
import org.infinity.core.train.model.po.TrainPO;
import org.infinity.core.trip.model.po.TripPO;
import org.infinity.core.user.model.po.UserPO;
import org.springframework.boot.autoconfigure.cache.RedisCacheManagerBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;

import static com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY;
import static com.fasterxml.jackson.databind.ObjectMapper.DefaultTyping.NON_FINAL;
import static java.time.Duration.ofDays;
import static org.infinity.core.common.constants.I12306Constants.*;
import static org.springframework.data.redis.cache.RedisCacheConfiguration.defaultCacheConfig;
import static org.springframework.data.redis.serializer.RedisSerializationContext.SerializationPair.fromSerializer;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className CacheConfiguration
 * @desc
 */
@Configuration(proxyBeanMethods = false)
public class CacheConfiguration {

    /**
     * 缓存名称前缀
     */
    private static final String CACHE_PREFIX = "Cache:";

    @Bean
    public RedisCacheManagerBuilderCustomizer redisBuilderCustomizer(MyObjectMapper objectMapper) {
        MyObjectMapper defaultObjectMapper = new MyObjectMapper();
        defaultObjectMapper.activateDefaultTyping(defaultObjectMapper.getPolymorphicTypeValidator(), NON_FINAL, PROPERTY);
        GenericJackson2JsonRedisSerializer defaultSerializer = new GenericJackson2JsonRedisSerializer(defaultObjectMapper);

        var orderSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, OrderPO.class);
        var orderDetailSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, SearchOrderDetailResponse.class);
        var stationSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, StationPO.class);
        var carriageSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, CarriagePO.class);
        var seatSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, SeatPO.class);
        var trainSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, TrainPO.class);
        var tripSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, TripPO.class);
        var userSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, UserPO.class);

        return builder -> builder.cacheDefaults(defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(defaultSerializer))
                        .entryTtl(ofDays(1)))
                .withCacheConfiguration(ORDER_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(orderSerializer))
                        .entryTtl(ofDays(14)))
                .withCacheConfiguration(ORDER_DETAIL_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(orderDetailSerializer))
                        .entryTtl(ofDays(14)))
                .withCacheConfiguration(STATION_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(stationSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(CARRIAGE_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(carriageSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(SEAT_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(seatSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(TRAIN_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(trainSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(TRAIN_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(trainSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(TRIP_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(tripSerializer))
                        .entryTtl(ofDays(7)))
                .withCacheConfiguration(USER_CACHE, defaultCacheConfig()
                        .prefixCacheNameWith(CACHE_PREFIX)
                        .serializeValuesWith(fromSerializer(userSerializer))
                        .entryTtl(ofDays(7)));
    }
}
