using UnityEngine;
using System.Collections;

public class ScoreKeeper : MonoBehaviour {
	
	int score = 0;
	
	// Use this for initialization
	void Start () {
	
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
		return score;
	}
}
