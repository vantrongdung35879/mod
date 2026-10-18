.class public final enum Lcom/tencent/tme/player/TMEPlayerEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/player/TMEPlayerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum BufferingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum BufferingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum DownloadError:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum DownloadProgressUpdate:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum FirstFrameRendered:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum OneLoopComplete:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum ReachHLSAdTag:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum RefreshPlayerEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum RefreshPlayerStart:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum SeekingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum SeekingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum SwitchDefinitionEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum SwitchDefinitionStart:Lcom/tencent/tme/player/TMEPlayerEvent;

.field public static final enum Unkown:Lcom/tencent/tme/player/TMEPlayerEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v1, "Unkown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tme/player/TMEPlayerEvent;->Unkown:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v1, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v3, "FirstFrameRendered"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tme/player/TMEPlayerEvent;->FirstFrameRendered:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v3, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v5, "BufferingStart"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v5, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v7, "BufferingEnd"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v7, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v9, "SeekingStart"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/tme/player/TMEPlayerEvent;->SeekingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v9, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v11, "SeekingEnd"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/tme/player/TMEPlayerEvent;->SeekingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v11, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v13, "SwitchDefinitionStart"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/tme/player/TMEPlayerEvent;->SwitchDefinitionStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v13, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v15, "SwitchDefinitionEnd"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tencent/tme/player/TMEPlayerEvent;->SwitchDefinitionEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v15, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v14, "ReachHLSAdTag"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/tencent/tme/player/TMEPlayerEvent;->ReachHLSAdTag:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v14, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v12, "OneLoopComplete"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/tencent/tme/player/TMEPlayerEvent;->OneLoopComplete:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v12, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v10, "RefreshPlayerStart"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/tencent/tme/player/TMEPlayerEvent;->RefreshPlayerStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v10, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v8, "RefreshPlayerEnd"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/tencent/tme/player/TMEPlayerEvent;->RefreshPlayerEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v8, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v6, "DownloadProgressUpdate"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tencent/tme/player/TMEPlayerEvent;->DownloadProgressUpdate:Lcom/tencent/tme/player/TMEPlayerEvent;

    new-instance v6, Lcom/tencent/tme/player/TMEPlayerEvent;

    const-string v4, "DownloadError"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/tencent/tme/player/TMEPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tencent/tme/player/TMEPlayerEvent;->DownloadError:Lcom/tencent/tme/player/TMEPlayerEvent;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/tencent/tme/player/TMEPlayerEvent;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/tencent/tme/player/TMEPlayerEvent;->$VALUES:[Lcom/tencent/tme/player/TMEPlayerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/player/TMEPlayerEvent;
    .locals 1

    const-class v0, Lcom/tencent/tme/player/TMEPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/player/TMEPlayerEvent;
    .locals 1

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerEvent;->$VALUES:[Lcom/tencent/tme/player/TMEPlayerEvent;

    invoke-virtual {v0}, [Lcom/tencent/tme/player/TMEPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/player/TMEPlayerEvent;

    return-object v0
.end method
