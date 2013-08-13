using UnityEngine;
using System.Collections;

public class ScoreKeeper : MonoBehaviour {
	
	public static ScoreKeeper instance; // for singleton

	int score = 0;
	
	// Use this for initialization
	void Start () {
		guiText.text = "Gold: " + score;
	}
	
	void Awake()
	{
		instance = this;//for singleton
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public int ChangeScore(int mod)
	{
		score += mod;
		if (score < 0)
		{
			score = 0;
		}
		guiText.text = "Gold: " + score;
		return score;
	}
}
