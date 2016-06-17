(* -------------------------------------------------------------------------- *)
type media_status =
  | None [@js 0]
  | Starting [@js 1]
  | Running [@js 2]
  | Paused [@js 3]
  | Stopped [@js 4]
  [@@js.enum]

type media_error =
  | Aborted [@js 1]
  | Network [@js 2]
  | Decode [@js 3]
  | None_supported [@js 4]
  [@@js.enum]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
type error = private Ojs.t

val code    : error -> media_error
val message : error -> string
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
type media = private Ojs.t

val get_current_amplitude  :
  media                   ->
  (float -> unit)         ->
  ?error:(error -> unit)  ->
  unit                    ->
  unit
[@@js.call]

val get_current_position   :
  media                   ->
  (int -> unit)           ->
  ?error:(error -> unit)  ->
  unit                    ->
  unit
[@@js.call]

val get_duration           : media -> int
[@@js.get]

val play                   : media -> unit
[@@js.call]

val pause                  : media -> unit
[@@js.call]

val stop                   : media -> unit
[@@js.call]

val seek_to                : media -> int
[@@js.call "seekTo"]

val set_volume             : media -> int
[@@js.call "setVolume"]

val start_record           : media -> unit
[@@js.call]

val stop_record            : media -> unit
[@@js.call]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val new_media :
  string                            ->
  (int -> unit)                     ->
  ?error_cb:(media_error -> unit)   ->
  ?status_cb:(media_status -> unit) ->
  unit                              ->
  media
[@@js.new "Media"]
(* -------------------------------------------------------------------------- *)
