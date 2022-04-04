package com.luv2code.imusic.config;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class StorageConfig {
    @Value("${cloud.aws.credentials.access-key}")
    private String accessKey;

    @Value("${cloud.aws.credentials.secret-key}")
    private String accessSecret;

    @Value("${cloud.aws.region.static}")
    private String region;

    

    
    @Bean
    public AmazonS3 s3Client() {
        AWSCredentials credentials = new BasicAWSCredentials(accessKey, accessSecret);
        return AmazonS3ClientBuilder.standard()
                .withCredentials(new AWSStaticCredentialsProvider(credentials))
                .withRegion(region).build();
    }
    
	/*
	 * @Value("${cloud.aws.credentials.access-key}") private String awsId;
	 * 
	 * @Value("${cloud.aws.credentials.secret-key}") private String awsKey;
	 * 
	 * @Value("${cloud.aws.region.static}") private String region;
	 * 
	 * @Bean public BasicAWSCredentials basicAWSCredentials() { return new
	 * BasicAWSCredentials(awsId, awsKey); }
	 * 
	 * @Bean public AmazonS3 amazonS3() { return (AmazonS3)
	 * AmazonS3ClientBuilder.standard() .withCredentials(new
	 * DefaultAWSCredentialsProviderChain()) .build(); }
	 */


}
