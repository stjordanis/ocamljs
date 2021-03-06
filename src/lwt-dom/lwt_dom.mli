(*
 * This file is part of ocamljs, OCaml to Javascript compiler
 * Copyright (C) 2009 Skydeck, Inc
 * Copyright (C) 2010 Jake Donham
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the Free
 * Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
 * MA 02111-1307, USA
 *)

val sleep : float -> unit Lwt.t
      (** [sleep d] is a thread which remains suspended for [d] seconds
          (letting other threads run) and then terminates. *)
val yield : unit -> unit Lwt.t
      (** [yield ()] is a thread which suspends itself (letting other
          threads run) and then resumes as soon as possible and
          terminates. *)

val http_request : ?headers:(string * string) list -> [ `Get | `Post of string ] -> string -> Dom.xMLHttpRequest Lwt.t
