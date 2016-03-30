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
class error : Ojs.t ->
  object
    inherit Ojs.obj

    method code : media_error
    method message : string
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
class media : Ojs.t ->
  object
    inherit Ojs.obj

    method get_current_amplitude  : (float -> unit)         ->
                                    ?error:(error -> unit) ->
                                    unit                    ->
                                    unit
    method get_current_position   : (int -> unit)           ->
                                    ?error:(error -> unit) ->
                                    unit                    ->
                                    unit
    method get_duration           : int
    [@@js.get "getDuration"]
    method play                   : unit
    method pause                  : unit
    method stop                   : unit
    method seek_to                : int -> unit
    method set_volume             : int -> unit
    [@@js.set "setVolume"]
    method start_record           : unit
    method stop_record            : unit
  end

val new_media : string                            ->
                (int -> unit)                     ->
                ?error_cb:(media_error -> unit)   ->
                ?status_cb:(media_status -> unit) ->
                unit                              ->
                media
[@@js.new "Media"]
(* -------------------------------------------------------------------------- *)
