package com.bit.hi.aop;

import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component
@Aspect
public class TimeCheckAdvice {
	
	private static final Logger logger = LoggerFactory.getLogger(TimeCheckAdvice.class);
	
	@Around("within(com.bit.hi.service..*)")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable {
		String signature = pjp.getSignature().toShortString();
		StopWatch stopWatch=new StopWatch();
		stopWatch.start();

		try {
			Object obj = pjp.proceed();
			return obj;
		} finally {
			stopWatch.stop();
			logger.info(signature + "() 메소드 수행에 걸린 시간 : "+ stopWatch.getTotalTimeMillis() + "(ms)초");
		}
	}
}
