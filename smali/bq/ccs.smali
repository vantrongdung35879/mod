.class public Lbq/ccs;
.super Ljava/lang/Object;
.source "ccs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lbq/impl/ccs_invoker;->__connect(Ljava/lang/String;I)V

    return-void
.end method

.method public static drop()V
    .locals 0

    .line 29
    invoke-static {}, Lbq/impl/ccs_invoker;->__drop()V

    return-void
.end method

.method public static file_to_report_server(Ljava/lang/String;Z)V
    .locals 0

    .line 122
    invoke-static {p0, p1}, Lbq/impl/ccs_invoker;->__file_to_report_server(Ljava/lang/String;Z)V

    return-void
.end method

.method public static get_bq_id()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Lbq/impl/ccs_invoker;->__get_bq_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_portrait_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0}, Lbq/impl/ccs_invoker;->__get_portrait_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get_settings_value_bool(Ljava/lang/String;Z)Z
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lbq/impl/ccs_invoker;->__get_settings_value_bool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static get_settings_value_decimal(Ljava/lang/String;D)D
    .locals 0

    .line 94
    invoke-static {p0, p1, p2}, Lbq/impl/ccs_invoker;->__get_settings_value_decimal(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static get_settings_value_integer(Ljava/lang/String;J)J
    .locals 0

    .line 84
    invoke-static {p0, p1, p2}, Lbq/impl/ccs_invoker;->__get_settings_value_integer(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static get_settings_value_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lbq/impl/ccs_invoker;->__get_settings_value_string(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static has_settings_key(Ljava/lang/String;)Z
    .locals 0

    .line 104
    invoke-static {p0}, Lbq/impl/ccs_invoker;->__has_settings_key(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Ljava/lang/String;I)Z
    .locals 1

    .line 8
    const-string v0, "BqCCS"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p1}, Lbq/impl/ccs_invoker;->__init(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static on_pause(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lbq/impl/ccs_invoker;->__on_pause(Z)V

    return-void
.end method

.method public static print_portrait()V
    .locals 0

    .line 69
    invoke-static {}, Lbq/impl/ccs_invoker;->__print_portait()V

    return-void
.end method

.method public static send_to_http_server(I[Ljava/lang/String;[[B)V
    .locals 7

    .line 74
    array-length v0, p1

    new-array v6, v0, [I

    const/4 v0, 0x0

    .line 75
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 77
    aget-object v1, p2, v0

    array-length v1, v1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    array-length v0, p1

    int-to-long v2, v0

    move v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lbq/impl/ccs_invoker;->__send_to_http_server(IJ[Ljava/lang/String;[[B[I)V

    return-void
.end method

.method public static uninit()Z
    .locals 1

    .line 14
    invoke-static {}, Lbq/impl/ccs_invoker;->__uninit()Z

    move-result v0

    return v0
.end method

.method public static update_portrait(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-static {p0, p1, p2, v0}, Lbq/impl/ccs_invoker;->__update_portrait_decimal(Ljava/lang/String;DZ)V

    return-void
.end method

.method public static update_portrait(Ljava/lang/String;DZ)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lbq/impl/ccs_invoker;->__update_portrait_decimal(Ljava/lang/String;DZ)V

    return-void
.end method

.method public static update_portrait(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, p1, p2, v0}, Lbq/impl/ccs_invoker;->__update_portrait_integer(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static update_portrait(Ljava/lang/String;JZ)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lbq/impl/ccs_invoker;->__update_portrait_integer(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static update_portrait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, v0}, Lbq/impl/ccs_invoker;->__update_portrait_string(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static update_portrait(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lbq/impl/ccs_invoker;->__update_portrait_string(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
