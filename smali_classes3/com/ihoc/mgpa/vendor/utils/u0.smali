.class public final enum Lcom/ihoc/mgpa/vendor/utils/u0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/utils/u0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/ihoc/mgpa/vendor/utils/u0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/ihoc/mgpa/vendor/GameKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/GameKey;->MAIN_VERCODE:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v2, "1"

    const-string v3, "GAMEVERSION"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v2, Lcom/ihoc/mgpa/vendor/GameKey;->SCENE:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v3, "2"

    const-string v5, "SCENE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v2}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v3, Lcom/ihoc/mgpa/vendor/GameKey;->FPS:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v5, "3"

    const-string v7, "FPS"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v5, Lcom/ihoc/mgpa/vendor/GameKey;->MODEL_LEVEL:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v7, "5"

    const-string v9, "MODELQUALITY"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v7, v5}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v5, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v7, Lcom/ihoc/mgpa/vendor/GameKey;->EFFECT_LEVEL:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v9, "6"

    const-string v11, "PICQUALITY"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v9, v7}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v7, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v9, Lcom/ihoc/mgpa/vendor/GameKey;->USERS_COUNT:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v11, "7"

    const-string v13, "VISIBLEPLAYER"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v11, v9}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v9, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v11, Lcom/ihoc/mgpa/vendor/GameKey;->NET_LATENCY:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v13, "8"

    const-string v15, "NETDELAY"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v13, v11}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v11, Lcom/ihoc/mgpa/vendor/utils/u0;

    const-string v13, "GAMERESULT"

    const/4 v15, 0x7

    const-string v14, "9"

    const/4 v12, 0x0

    invoke-direct {v11, v13, v15, v14, v12}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v13, Lcom/ihoc/mgpa/vendor/utils/u0;

    const-string v14, "10"

    const-string v15, "SYSTEMINFO"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v10, v14, v12}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v12, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->FPS_TARGET:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "11"

    const-string v10, "FPSTARGET"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v10, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->HD_MODEL:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "12"

    const-string v8, "RESOLUTION"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v8, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->THREAD_TID:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "14"

    const-string v6, "THREADID"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v6, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->LIGHT_EFFECT:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "48"

    const-string v4, "LIGHT_EFFECT"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v4, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->NICE_RECORD:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "49"

    const-string v8, "NICE_RECORD"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v8, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->Countdown:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "88"

    const-string v6, "COUNTDOWN"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v6, v4, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v6, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->SuperCore:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "89"

    const-string v4, "SUPER_CORE"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v8, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v4, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "200"

    const-string v8, "SUPER_RESOLUTION"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v8, Lcom/ihoc/mgpa/vendor/utils/u0;

    sget-object v14, Lcom/ihoc/mgpa/vendor/GameKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v15, "201"

    const-string v6, "FRAME_INTERPOLATION"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v15, v14}, Lcom/ihoc/mgpa/vendor/utils/u0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    const/16 v6, 0x12

    new-array v6, v6, [Lcom/ihoc/mgpa/vendor/utils/u0;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v10, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/ihoc/mgpa/vendor/utils/u0;->c:[Lcom/ihoc/mgpa/vendor/utils/u0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ihoc/mgpa/vendor/GameKey;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/vendor/utils/u0;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/ihoc/mgpa/vendor/utils/u0;->b:Lcom/ihoc/mgpa/vendor/GameKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/utils/u0;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/utils/u0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/utils/u0;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/utils/u0;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/u0;->c:[Lcom/ihoc/mgpa/vendor/utils/u0;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/utils/u0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/utils/u0;

    return-object v0
.end method
