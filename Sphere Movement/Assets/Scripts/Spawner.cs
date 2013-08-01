using UnityEngine;
using System.Collections;

public class Spawner : MonoBehaviour {
	
	public GameObject prefab;
	public Transform planet;
	public float delay = 2.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		delay -= Time.deltaTime;
		
		if(delay <= 0)
		{
			delay = 0.1f;
			GameObject go = (GameObject)Instantiate(prefab, transform.position, transform.rotation);
			go.transform.parent = transform;
			
		}
	}
}
