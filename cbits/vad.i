%module vad
%{
  #include "webrtc/typedefs.h"
  typedef struct WebRtcVadInst VadInst;
  int WebRtcVad_Create(VadInst** handle);
  void WebRtcVad_Free(VadInst* handle);
  int WebRtcVad_Init(VadInst* handle);
  int WebRtcVad_set_mode(VadInst* handle, int mode);
  int WebRtcVad_Process(VadInst* handle, int fs, const int16_t* audio_frame, int frame_length);
  int WebRtcVad_ValidRateAndFrameLength(int rate, int frame_length);
%}
