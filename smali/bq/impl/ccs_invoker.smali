.class public Lbq/impl/ccs_invoker;
.super Ljava/lang/Object;
.source "ccs_invoker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native __connect(Ljava/lang/String;I)V
.end method

.method public static native __drop()V
.end method

.method public static native __file_to_report_server(Ljava/lang/String;Z)V
.end method

.method public static native __get_bq_id()Ljava/lang/String;
.end method

.method public static native __get_portrait_string(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native __get_settings_value_bool(Ljava/lang/String;Z)Z
.end method

.method public static native __get_settings_value_decimal(Ljava/lang/String;D)D
.end method

.method public static native __get_settings_value_integer(Ljava/lang/String;J)J
.end method

.method public static native __get_settings_value_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native __has_settings_key(Ljava/lang/String;)Z
.end method

.method public static native __init(Ljava/lang/String;I)Z
.end method

.method public static native __mark_res_load(J)V
.end method

.method public static native __on_pause(Z)V
.end method

.method public static native __print_portait()V
.end method

.method public static native __save_settings()V
.end method

.method public static native __send_to_http_server(IJ[Ljava/lang/String;[[B[I)V
.end method

.method public static native __send_to_report_server(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native __send_to_session_server(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native __set_http_server_url(Ljava/lang/String;)V
.end method

.method public static native __uninit()Z
.end method

.method public static native __update_portrait_decimal(Ljava/lang/String;DZ)V
.end method

.method public static native __update_portrait_integer(Ljava/lang/String;JZ)V
.end method

.method public static native __update_portrait_string(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
