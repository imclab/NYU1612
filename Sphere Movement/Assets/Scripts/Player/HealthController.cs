using UnityEngine;
using System.Collections;

public class HealthController : MonoBehaviour {
	
	public static HealthController instance; // for singleton

	public int maxHP, currHP;
	
	// Use this for initialization
	void Start () {
		maxHP = 100;
		currHP = 100;
		guiText.text = "HP: " + currHP;
	}
	
	void Awake()
	{
		instance = this;//for singleton
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public int ChangeHP(int mod)
	{
		currHP += mod;
		if (currHP <= 0)
		{
			Application.LoadLevel ("spheremove");
			//die
		}
		if (currHP >= maxHP)
		{
			currHP = maxHP;
		}
		guiText.text = "HP: " + currHP;
		return currHP;
	}
}
