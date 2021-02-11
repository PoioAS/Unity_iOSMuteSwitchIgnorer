using System;
using System.Runtime.InteropServices;
using UnityEngine;

namespace Poio.iOS
{
    public class iOSMuteSwitchIgnorer
    {
#if UNITY_IOS
        [DllImport("__Internal")]
        private static extern void _InitializeMuteSwitchIgnorer();
        
        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        static void OnBeforeSceneLoadRuntimeMethod()
        {
            //Before first Scene loaded
            _InitializeMuteSwitchIgnorer();
        }
#endif
    }
}

