using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Spawner : MonoBehaviour {
	
	public GameObject prefab;
	public Transform planet;
	public float delay = 2.0f;
	
	
	float s = .5f;
	
	float[] startPos;
	
	GameObject[] spawnArray;
	public GameObject badguy, wall;
	
	
	// Use this for initialization
	void Start () {
		startPos = new float[] {0f, s, s*2, s*3, s*4, s*5, s*6, s*7, s*8, s*9, s*10, s*11, s*12, s*13, s*14, s*15, s*16, s*17, s*18, s*19,
								-s, -s*2, -s*3, -s*4, -s*5, -s*6, -s*7, -s*8, -s*9, -s*10, -s*11, -s*12, -s*13, -s*14, -s*15, -s*16, -s*17, -s*18, -s*19};
		spawnArray = new GameObject[] {badguy, badguy, badguy, wall};
	}
	
	// Update is called once per frame
	void Update () {
		delay -= Time.deltaTime;
		
		if(delay <= 0)
		{
		
			delay = 0.1f;
			
			
			int p = Random.Range(0,spawnArray.Length);
			GameObject go = Instantiate(spawnArray[p], transform.position, transform.rotation) as GameObject;
			go.transform.parent = planet;
			int i = Random.Range(0,39);
			go.transform.RotateAround (Vector3.zero, transform.forward, startPos[i]);
		
			p = Random.Range(0,spawnArray.Length);
			go = (GameObject)Instantiate(spawnArray[p], transform.position, transform.rotation);
			go.transform.parent = planet;
			i = Random.Range(0,39);
			go.transform.RotateAround (Vector3.zero, transform.forward, startPos[i]);
			
			p = Random.Range(0,spawnArray.Length);
			go = (GameObject)Instantiate(spawnArray[p], transform.position, transform.rotation);
			go.transform.parent = planet;
			i = Random.Range(0,39);
			go.transform.RotateAround (Vector3.zero, transform.forward, startPos[i]);
			
		}
	}
}
