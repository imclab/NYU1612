using UnityEngine;
using System.Collections;

public class Spawner : MonoBehaviour {
	
	public Transform enemy;
	public float timer = .5f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		timer -= Time.deltaTime;
		if(timer <= 0)
		{
			timer = .5f;
			Instantiate(enemy, new Vector3(23f, 1.1f, Random.Range(-9.0f, 9.0f)), Quaternion.identity);
		}
	}
}
