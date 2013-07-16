using UnityEngine;
using System.Collections;

public class fishmove : MonoBehaviour {
	float tKeeper;
	Transform go;
	public Transform cam;
	public Transform lines;
	
	public Transform p1;
	public Transform p2;
	float t;
	// Use this for initialization
	void Start () {
		
		go = (Transform)Instantiate(lines);
		go.parent = this.transform;
		go.position = Vector3.zero;
	}
	
	// Update is called once per frame
	void Update () {
		if(cam.transform.position.y <= -7.2)
		{
			transform.position += new Vector3(0,0,Time.deltaTime*18);
		}
		t += Time.deltaTime;
		if(t%1 >=.5f)
		{
			p1.particleSystem.Play();
		
		}else{
			p2.particleSystem.Play();
		}
		if(Time.time >= 40f && tKeeper < 40f)
		{
			
			Destroy(this.gameObject);
		}
	}
}
