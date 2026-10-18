.class final enum Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;
.super Ljava/lang/Enum;
.source "GmeVideoBaseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field public static final enum DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field public static final enum PAUSE:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field public static final enum SEEKING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field public static final enum START:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

.field public static final enum STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 49
    new-instance v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->START:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 50
    new-instance v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const-string v3, "DECODING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->DECODING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 51
    new-instance v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->PAUSE:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 52
    new-instance v5, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const-string v7, "SEEKING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->SEEKING:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    .line 53
    new-instance v7, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->STOP:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    const/4 v9, 0x5

    .line 48
    new-array v9, v9, [Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->$VALUES:[Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;
    .locals 1

    .line 48
    const-class v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;
    .locals 1

    .line 48
    sget-object v0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->$VALUES:[Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$State;

    return-object v0
.end method
