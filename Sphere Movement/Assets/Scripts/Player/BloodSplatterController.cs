using UnityEngine;
using System.Collections;

public class BloodSplatterController : MonoBehaviour {
	
	Color currColor;
	bool pulse = false;
	public static BloodSplatterController instance;
	
	void Awake()
	{
		instance = this;
	}
	
	// Use this for initialization
	void Start () {
		pulse = false;
		currColor = guiTexture.color;
	}
	
	// Update is called once per frame
	void Update () {
		
		if(pulse)
		{
			currColor = this.guiTexture.color;
			currColor.a = Mathf.Sin(Time.time * 5f) * .05f + .07f;
			
		}else{
			currColor.a = 0f;
		}
		this.guiTexture.color = currColor;
	}
	
	public void StartBlood()
	{	
		pulse = true;
	}	
	
	public void StopBlood()
	{	
		pulse = false;
	}	
}
