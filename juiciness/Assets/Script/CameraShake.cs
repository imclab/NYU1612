using UnityEngine;
using System.Collections;

public class CameraShake : MonoBehaviour {
	
	float shakeAmount = 0f;
	Vector3 startPos;
	
	// Use this for initialization
	void Start () {
		startPos = transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Space))
		{
			StartCoroutine(ShakeCoroutine());
		}
//		
//		shakeAmount -= Time.deltaTime;
//		if(shakeAmount < 0f)
//		{
//			shakeAmount = 0f;
//		}
//	
//		transform.position = startPos + Mathf.Sin(Time.time * 100) * transform.right * shakeAmount + Mathf.Sin(Time.time * 100) * transform.up * shakeAmount;
//		
	}
	
	IEnumerator ShakeCoroutine()
	{
		float t = 1f;
		float shakeDur = 2f;
		while (t > 0f)
		{
			t -= Time.deltaTime / shakeDur;
			transform.position = startPos + Mathf.Sin(Time.time * 100) * transform.right * t + Mathf.Sin(Time.time * 80) * transform.up * t;
			yield return 0;
		}
		
		
	}
}
