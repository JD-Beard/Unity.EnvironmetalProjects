using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ButtonSound : MonoBehaviour, IPointerEnterHandler {

	public AudioClip[] audioClip;


	public virtual void OnPointerEnter(PointerEventData eventData){

		PlaySound (0);
	


	}



//	public virtual void OnPointerClick(PointerEventData eventData){
//
//		PlaySound (0);
//	
//	}


	public void PlaySound(int clip){


		AudioSource audio = GetComponent<AudioSource> ();
		audio.clip = audioClip [clip];
		audio.Play ();

	}
}
