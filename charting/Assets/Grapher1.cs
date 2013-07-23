using UnityEngine;
using System.Collections;

public class Grapher1 : MonoBehaviour {

	public int resolution = 10;

	private int currentResolution;
	private ParticleSystem.Particle[] points;

	void Start () {
		CreatePoints();
	}

	private void CreatePoints () {
		if(resolution < 2){
			resolution = 2;
		}
		currentResolution = resolution;
		points = new ParticleSystem.Particle[resolution];
		float increment = 1f / (resolution - 1);
		for(int i = 0; i < resolution; i++){
			float x = i * increment;
			points[i].position = new Vector3(x, 0f, 0f);
			points[i].color = new Color(0f, 0f, 0f);
			points[i].size = 0.1f;
		}
	}

	void Update () {
		if(currentResolution != resolution){
			CreatePoints();
		}
		for(int i = 0; i < resolution; i++){
			Vector3 p = points[i].position;
			p.y = GraphPoint(p.x);
			points[i].position = p;
		}
		particleSystem.SetParticles(points, points.Length);
	}
	private static float GraphPoint (float x) {
		return x;
	}
}