using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class FishController : MonoBehaviour {
	
	public Fish fish;
	List<Fish> fishList = new List<Fish>();
	
	// Use this for initialization
	void Start () {
		
		int counter = 200;
		while(counter > 0)
		{
			Fish go = Instantiate(fish, Random.insideUnitSphere * 20, Quaternion.identity) as Fish;
			fishList.Add(go);
			counter--;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetMouseButton(0))
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit = new RaycastHit();
		
			if(Physics.Raycast(ray, out hit,1000f))
			{
				Debug.Log(hit.point);
				foreach(Fish f in fishList)
				{
					f.SetNewDestination(hit.point);
				}
			}
		}
		
	
	}
	
	void SpawnFish()
	{
		Instantiate(fish, Random.insideUnitSphere * 20, Quaternion.identity);
	}
}
