# Array Topics

## Subarray v/s subsequence

### Subarray
Continuous part of the array

Example :
<table border>
<tr>
<td>1</td>
<td>2</td>
<td>0</td>
<td>7</td>
<td>2</td>
<td>0</td>
<td>2</td>
</tr>
</table>

This below array is sub array of previous array
<table border>
<tr>
<td>2</td>
<td>0</td>
<td>7</td>
<td>2</td>
<td>0</td>
</tr>
</table>

> So, Number of subarrays of an array with n elements = <sup>n</sup>C<sub>2</sub> + n = n * (n+1)/2

### Subsequence 
A subsequence is a sequence that can be derived an array by selecting zero or more elements without chaning the order of the remaining elements.

Example :
<table border>
<tr>
<td>1</td>
<td>2</td>
<td>0</td>
<td>7</td>
<td>2</td>
<td>0</td>
<td>2</td>
</tr>
</table>

This below array is sub array of previous array
<table border>
<tr>
<td>1</td>
<td></td>
<td>0</td>
<td></td>
<td>2</td>
<td>0</td>
<td></td>
</tr>
<tr>
<td></td>
<td>2</td>
<td></td>
<td>7</td>
<td></td>
<td></td>
<td>2</td>
</tr>
</table>
<table border>
<tr>
<td>2</td>
<td>7</td>
<td>2</td>
</tr>
</table>

So we can say that subsequence is part of array but not continuous but in same order.

> So number of subsequences of an array  with n elements is = 2<sup>n</sup>

> <b>NOTE :<b> Every Subarray is a Subsequence but every subsequence is not a subarray.