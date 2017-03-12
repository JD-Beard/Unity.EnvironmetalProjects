using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour {

	public AudioClip[] audioClip;

	void Start () {
		
	}
	

	void Update () {
		
	}


	public void PlaySound(int clip){

		AudioSource audio = GetComponent<AudioSource> ();
		audio.clip = audioClip [clip];
		audio.Play ();
	}
}
