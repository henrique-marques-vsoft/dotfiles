## API endpoints suggestions  
  
#### Average Score, Modules Attempt and Total time spent widgets  
  
**Endpoint:** `GET api2/analytics/timeline/modules-attempt`  
**Endpoint:** `GET api2/analytics/timeline/average-score`  
**Endpoint:** `GET api2/analytics/timeline/time-spent`  
  
**Payload**  
  
```typescript  
type RequestParams = {     
   from: Date;  
   to: Date;  
};  
```  
  
**Response**  
  
```typescript  
type Response = {  
   totalValue: number;  
   change: number; // Positive or negative number;  
   timeline: {  
       date: Date;  
       value: number;  
   } [];  
}  
```  
  
----  
  
#### Modules completion rate widget  
  
**Endpoint:** `GET api2/insights/modules`  
  
**Payload**  
  
```typescript  
type RequestParams = {     
   limit: number;  
   sort: string; "Use the insights.completionRate"  
};  
```  
  
**Response**  
  
```typescript  
type Response = {  
   data?: {  
       id: number;  
       name: string;  
       container?: {  
           id: number;  
           name: number;  
       };  
       insights: {  
           completionRate?: number;  
       };  
   } [];  
   pagination?: PaginationBody;  
   cache?: {  
       trackingUuid: string;  
       createdAt: string; // ISO date  
       status: 'inProgress' | 'completed';  
   }  
}  
```  
  
----  
  
#### Learning Paths completion rate widget  
  
**Endpoint:** `GET api2/insights/containers`  
  
**Payload**  
  
```typescript  
type RequestParams = {     
   limit: number;  
   sort: string; "Use the insights.completionRate"  
};  
```  
  
**Response**  
  
```typescript  
type Response = {  
   data?: {  
       id: number;  
       name: string;  
       insights: {  
           isPublic: boolean;  
           isRequired: boolean;  
           completionRate?: number;  
       };  
   } [];  
   pagination?: PaginationBody;  
   cache?: {  
       trackingUuid: string;  
       createdAt: string; // ISO date  
       status: 'inProgress' | 'completed';  
   }  
}  
```  
  
----  
  
#### Modules widget  
  
**Endpoint:** `GET api2/trackings/module`  
  
**Payload**  
  
```typescript  
type RequestParams = {  
   sort: string;  
   search: string; // search by name  
};  
```  
  
**Response**  
  
```typescript  
type Response = {  
   data?: {  
       id: number;  
       name: string;  
       container?: {  
           id: number;  
           name: number;  
       };  
       insights: {  
           assignedUsers: number;  
           totalUsers: number;  
           averageScore?: number;  
           completionRate?: number;  
           totalTimeSpent?: number;  
       };  
   } [];  
   pagination?: PaginationBody;  
   cache?: {  
       trackingUuid: string;  
       createdAt: string; // ISO date  
       status: 'inProgress' | 'completed';  
   }  
}  
```  
  
----  
  
#### Learning Paths widget  
  
**Endpoint:** `GET api2/trackings/academy`  
  
**Payload**  
  
```typescript  
type RequestParams = {     
   limit: number;  
   sort: string;  
   search: string; // search by name  
};  
```  
  
**Response**  
  
```typescript  
type Response = {  
   data?: {  
       id: number;  
       name: string;  
       insights: {  
           isPublic: boolean;  
           isRequired: boolean;  
           assignedUsers: number;  
           totalUsers: number;  
           averageScore?: number;  
           completionRate?: number;  
           totalTimeSpent?: number;  
       };  
   } [];  
   pagination?: PaginationBody;  
   cache?: {  
       trackingUuid: string;  
       createdAt: string; // ISO date  
       status: 'inProgress' | 'completed';  
   }  
}  
```  
  
----