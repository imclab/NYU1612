using UnityEngine;
using System.Collections;

public class spheregrow : MonoBehaviour {
	bool grow = false;
	float x,y;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(grow)
		{
			transform.localScale += new Vector3(Time.deltaTime*3,0,Time.deltaTime*3);
		}
			
	}
	
	public void StartInkGrow()
	{
		
		grow = true;
	}
}
