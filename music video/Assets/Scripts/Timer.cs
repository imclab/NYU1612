using UnityEngine;
using System.Collections;

public class Timer : MonoBehaviour {
	float timeKeeper;
	public Transform ter;
	public spheregrow ink;
	public Transform fish;
	public Transform land;
	bool moveUp = false;
	bool moveDown = false;
	bool lookAtFish = false;
	bool oscillate = false;
	bool moveTo = false;
	bool attach = true;
	bool lookAtLand = false;
	// Use this for initialization
	void Start () {
		
		
	}
	
	// Update is called once per frame
	void Update () {
		//print (Time.time);
		if(moveDown)
		{
			transform.position += new Vector3(0, Time.deltaTime * -2.8f,0);

		}
		if(Time.time >= 39.9f && timeKeeper < 39.9f)
		{
			attach=false;
			moveTo = false;
			transform.parent = null;
			moveUp = true;
			lookAtLand = true;
			
		}
		if(moveTo && fish != null)
		{
			transform.Translate((fish.position - transform.position)* (Time.deltaTime*.8f));
			

		}
		
		if(moveUp)
		{
			if(lookAtLand)
			{
				transform.position += new Vector3(0, Time.deltaTime * 5.2f,0);
			}
			transform.position += new Vector3(0, Time.deltaTime * 1.2f,0);
			
		}
		if(oscillate)
		{
			var pos = transform.position;
			pos = transform.position;
			
			pos.x = Mathf.Sin(Time.time)*3;
			transform.position = pos;
		}
		if(lookAtFish && fish != null)
		{
			transform.LookAt(fish.position);
		}
		if(lookAtLand)
		{
			transform.LookAt(land.position);
		}
		if(Time.time >= 1f && timeKeeper < 1f)
		{
			moveUp = true;
		}
		if(Time.time >= 3.3f && timeKeeper < 3.3f)
		{
			ink.StartInkGrow();
			timeKeeper = Time.time;
		}
		if(Time.time >= 5f && timeKeeper < 5f)
		{
			moveUp = false;
			moveDown = true;
			timeKeeper = Time.time;
		}
		if(Time.time >= 10.8f && timeKeeper < 10.8f)
		{
			lookAtFish = true;
			oscillate = true;
			
		}
		if(Time.time >= 37f && timeKeeper < 37f)
		{
			moveTo =true;
			
		}
		if(camera.transform.position.y <= -7.4 && attach)
		{
			moveDown = false;
			transform.parent = fish;
		}
	}
}
