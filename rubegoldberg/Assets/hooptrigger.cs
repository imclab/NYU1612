using UnityEngine;
using System.Collections;

public class hooptrigger : MonoBehaviour {
	int count;
	public Transform rocket;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	void OnTriggerEnter()
	{
		count++;
		if(count == 1)
		{
			light.color = Color.yellow;
		}
		if(count == 2)
		{
			light.color = Color.green;
		}
		if(count == 3)
		{
			light.color = Color.cyan;
			Instantiate(rocket);
		}
	}
}
