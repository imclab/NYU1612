using UnityEngine;
using System.Collections;

public class print : MonoBehaviour {
	
	int counter;
	
	// Use this for initialization
	void Start () {
		guiText.text="";
		counter = 0;
	}
	
	// Update is called once per frame
	void Update () {
		int number = (int)Mathf.Round(Random.value);
		guiText.text += number == 0 ? "/" : "\\";
		if(counter == 50)
		{
			guiText.text += "\n";
			counter =0;
		}
		counter++;
	}
}
