.class public Lbq/tools/log_decoder;
.super Ljava/lang/Object;
.source "log_decoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbq/tools/log_decoder$appender_decode_result;
    }
.end annotation


# instance fields
.field private decode_text_:Lbq/def/string_holder;

.field private handle_:J

.field private result_:Lbq/tools/log_decoder$appender_decode_result;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lbq/def/string_holder;

    invoke-direct {v0}, Lbq/def/string_holder;-><init>()V

    iput-object v0, p0, Lbq/tools/log_decoder;->decode_text_:Lbq/def/string_holder;

    .line 31
    sget-object v0, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    iput-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    .line 36
    const-string v2, ""

    invoke-static {p1, v2}, Lbq/impl/log_invoker;->__api_log_decoder_create(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    .line 39
    iput-wide v2, p0, Lbq/tools/log_decoder;->handle_:J

    .line 40
    sget-object p1, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    iput-object p1, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    long-to-int p1, v2

    mul-int/lit8 p1, p1, -0x1

    .line 43
    invoke-static {p1}, Lbq/tools/log_decoder$appender_decode_result;->from_int(I)Lbq/tools/log_decoder$appender_decode_result;

    move-result-object p1

    iput-object p1, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lbq/def/string_holder;

    invoke-direct {v0}, Lbq/def/string_holder;-><init>()V

    iput-object v0, p0, Lbq/tools/log_decoder;->decode_text_:Lbq/def/string_holder;

    .line 31
    sget-object v0, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    iput-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    if-nez p2, :cond_0

    .line 49
    const-string p2, ""

    :cond_0
    invoke-static {p1, p2}, Lbq/impl/log_invoker;->__api_log_decoder_create(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 52
    iput-wide p1, p0, Lbq/tools/log_decoder;->handle_:J

    .line 53
    sget-object p1, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    iput-object p1, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    long-to-int p2, p1

    mul-int/lit8 p2, p2, -0x1

    .line 56
    invoke-static {p2}, Lbq/tools/log_decoder$appender_decode_result;->from_int(I)Lbq/tools/log_decoder$appender_decode_result;

    move-result-object p1

    iput-object p1, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    :goto_0
    return-void
.end method

.method public static decode_file(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 93
    const-string p1, ""

    invoke-static {p0, p0, p1}, Lbq/impl/log_invoker;->__api_log_decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static decode_file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-static {p0, p0, p2}, Lbq/impl/log_invoker;->__api_log_decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 62
    iget-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    invoke-static {v0, v1}, Lbq/impl/log_invoker;->__api_log_decoder_destroy(J)V

    return-void
.end method

.method public decode()Lbq/tools/log_decoder$appender_decode_result;
    .locals 3

    .line 67
    iget-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    return-object v0

    .line 71
    :cond_0
    iget-wide v0, p0, Lbq/tools/log_decoder;->handle_:J

    iget-object v2, p0, Lbq/tools/log_decoder;->decode_text_:Lbq/def/string_holder;

    invoke-static {v0, v1, v2}, Lbq/impl/log_invoker;->__api_log_decoder_decode(JLbq/def/string_holder;)I

    move-result v0

    .line 72
    invoke-static {v0}, Lbq/tools/log_decoder$appender_decode_result;->from_int(I)Lbq/tools/log_decoder$appender_decode_result;

    move-result-object v0

    iput-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    return-object v0
.end method

.method public get_last_decode_result()Lbq/tools/log_decoder$appender_decode_result;
    .locals 1

    .line 78
    iget-object v0, p0, Lbq/tools/log_decoder;->result_:Lbq/tools/log_decoder$appender_decode_result;

    return-object v0
.end method

.method public get_last_decoded_log_entry()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lbq/tools/log_decoder;->decode_text_:Lbq/def/string_holder;

    iget-object v0, v0, Lbq/def/string_holder;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lbq/tools/log_decoder;->decode_text_:Lbq/def/string_holder;

    iget-object v0, v0, Lbq/def/string_holder;->value:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_0
    const-string v0, ""

    return-object v0
.end method
