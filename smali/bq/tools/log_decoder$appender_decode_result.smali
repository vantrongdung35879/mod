.class public final enum Lbq/tools/log_decoder$appender_decode_result;
.super Ljava/lang/Enum;
.source "log_decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq/tools/log_decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "appender_decode_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq/tools/log_decoder$appender_decode_result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbq/tools/log_decoder$appender_decode_result;

.field public static final enum eof:Lbq/tools/log_decoder$appender_decode_result;

.field public static final enum failed_decode_error:Lbq/tools/log_decoder$appender_decode_result;

.field public static final enum failed_invalid_handle:Lbq/tools/log_decoder$appender_decode_result;

.field public static final enum failed_io_error:Lbq/tools/log_decoder$appender_decode_result;

.field public static final enum success:Lbq/tools/log_decoder$appender_decode_result;


# direct methods
.method private static synthetic $values()[Lbq/tools/log_decoder$appender_decode_result;
    .locals 3

    const/4 v0, 0x5

    .line 17
    new-array v0, v0, [Lbq/tools/log_decoder$appender_decode_result;

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->eof:Lbq/tools/log_decoder$appender_decode_result;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->failed_invalid_handle:Lbq/tools/log_decoder$appender_decode_result;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->failed_decode_error:Lbq/tools/log_decoder$appender_decode_result;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbq/tools/log_decoder$appender_decode_result;->failed_io_error:Lbq/tools/log_decoder$appender_decode_result;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lbq/tools/log_decoder$appender_decode_result;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbq/tools/log_decoder$appender_decode_result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->success:Lbq/tools/log_decoder$appender_decode_result;

    .line 20
    new-instance v0, Lbq/tools/log_decoder$appender_decode_result;

    const-string v1, "eof"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbq/tools/log_decoder$appender_decode_result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->eof:Lbq/tools/log_decoder$appender_decode_result;

    .line 21
    new-instance v0, Lbq/tools/log_decoder$appender_decode_result;

    const-string v1, "failed_invalid_handle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbq/tools/log_decoder$appender_decode_result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->failed_invalid_handle:Lbq/tools/log_decoder$appender_decode_result;

    .line 22
    new-instance v0, Lbq/tools/log_decoder$appender_decode_result;

    const-string v1, "failed_decode_error"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbq/tools/log_decoder$appender_decode_result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->failed_decode_error:Lbq/tools/log_decoder$appender_decode_result;

    .line 23
    new-instance v0, Lbq/tools/log_decoder$appender_decode_result;

    const-string v1, "failed_io_error"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lbq/tools/log_decoder$appender_decode_result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->failed_io_error:Lbq/tools/log_decoder$appender_decode_result;

    .line 17
    invoke-static {}, Lbq/tools/log_decoder$appender_decode_result;->$values()[Lbq/tools/log_decoder$appender_decode_result;

    move-result-object v0

    sput-object v0, Lbq/tools/log_decoder$appender_decode_result;->$VALUES:[Lbq/tools/log_decoder$appender_decode_result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from_int(I)Lbq/tools/log_decoder$appender_decode_result;
    .locals 1

    .line 26
    invoke-static {}, Lbq/tools/log_decoder$appender_decode_result;->values()[Lbq/tools/log_decoder$appender_decode_result;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbq/tools/log_decoder$appender_decode_result;
    .locals 1

    .line 17
    const-class v0, Lbq/tools/log_decoder$appender_decode_result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq/tools/log_decoder$appender_decode_result;

    return-object p0
.end method

.method public static values()[Lbq/tools/log_decoder$appender_decode_result;
    .locals 1

    .line 17
    sget-object v0, Lbq/tools/log_decoder$appender_decode_result;->$VALUES:[Lbq/tools/log_decoder$appender_decode_result;

    invoke-virtual {v0}, [Lbq/tools/log_decoder$appender_decode_result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq/tools/log_decoder$appender_decode_result;

    return-object v0
.end method
