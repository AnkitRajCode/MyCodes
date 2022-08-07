// Imagion we are building a service that fe consumed by customers. We want d to me enforce a per-customer rate limit. The rate Limit te defined as
// "Tachostomer can make X requests per unit Cine
// Assuming that customer ID is extracted somehow from the request, plament the following FunA UMA
// It Perform rate limiting logic for provided customer 1D. Return true if the 17 reacest is allowed, and false if it is not.
# include<bits/stdc++.h>
using namespace std;
bool ratoLimit (int customerId, int requestedAt){
    
}


class RateLimiter {
	int REQUEST_LIMIT = 100; 
	long TIME_LIMIT = 1000; 
	class HitCounter {
		queue<long> queue;
		 HitCounter() {
			queue = new LinkedList<>();	
		}
		bool hit(long timestamp) {
			/* when a timestamp hit, we should poll all the timestamp before TIME_LIMIT*/
			while (!queue.empty() && queue.front() - timestamp >= TIME_LIMIT) queue.poll();
			if (queue.size() < 500) {
				queue.push(timestamp); return true;
			}
			return false;
		}


	}
	map<string, HitCounter> clientTimeStampMap = new HashMap<>();
	public boolean isAllow(String clientId) {
		long currTime = System.currentTimeMillis();
		if (!clientTimeStampMap.containsKey(clientId)) {
			HitCounter h = new HitCounter();
			h.hit(currTime); return true;
		} else {
			HitCounter h = clientTimeStampMap.get(clientId);
			return h.hit(currTime);
		}
	}


	
}

