%%%-------------------------------------------------------------------
%% @doc erleans_kafka_provider public API
%% @end
%%%-------------------------------------------------------------------

-module(erleans_kafka_provider_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erleans_kafka_provider_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
