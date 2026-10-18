.class public final enum Lcom/intlgame/video/SPMediaPlayerEvent;
.super Ljava/lang/Enum;
.source "SPMediaPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/video/SPMediaPlayerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventBufferingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventBufferingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventDownloadError:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventDownloadProgressUpdate:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventFirstFrameRendered:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventOneLoopComplete:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventReachHLSAdTag:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventRefreshPlayerEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventRefreshPlayerStart:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventSeekingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventSeekingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventSwitchDefinitionEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventSwitchDefinitionStart:Lcom/intlgame/video/SPMediaPlayerEvent;

.field public static final enum SPMediaPlayerEventUnkown:Lcom/intlgame/video/SPMediaPlayerEvent;


# direct methods
.method private static synthetic $values()[Lcom/intlgame/video/SPMediaPlayerEvent;
    .locals 3

    const/16 v0, 0xe

    .line 6
    new-array v0, v0, [Lcom/intlgame/video/SPMediaPlayerEvent;

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventUnkown:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventFirstFrameRendered:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventReachHLSAdTag:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventOneLoopComplete:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadProgressUpdate:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadError:Lcom/intlgame/video/SPMediaPlayerEvent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventUnkown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventUnkown:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 8
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventFirstFrameRendered"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventFirstFrameRendered:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 9
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventBufferingStart"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 10
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventBufferingEnd"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventBufferingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 11
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventSeekingStart"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 12
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventSeekingEnd"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSeekingEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 19
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventSwitchDefinitionStart"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 26
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventSwitchDefinitionEnd"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventSwitchDefinitionEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 28
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventReachHLSAdTag"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventReachHLSAdTag:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 29
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventOneLoopComplete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventOneLoopComplete:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 30
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventRefreshPlayerStart"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerStart:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 31
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventRefreshPlayerEnd"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventRefreshPlayerEnd:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 32
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventDownloadProgressUpdate"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadProgressUpdate:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 34
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    const-string v1, "SPMediaPlayerEventDownloadError"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->SPMediaPlayerEventDownloadError:Lcom/intlgame/video/SPMediaPlayerEvent;

    .line 6
    invoke-static {}, Lcom/intlgame/video/SPMediaPlayerEvent;->$values()[Lcom/intlgame/video/SPMediaPlayerEvent;

    move-result-object v0

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->$VALUES:[Lcom/intlgame/video/SPMediaPlayerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/video/SPMediaPlayerEvent;
    .locals 1

    .line 6
    const-class v0, Lcom/intlgame/video/SPMediaPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/video/SPMediaPlayerEvent;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/video/SPMediaPlayerEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerEvent;->$VALUES:[Lcom/intlgame/video/SPMediaPlayerEvent;

    invoke-virtual {v0}, [Lcom/intlgame/video/SPMediaPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/video/SPMediaPlayerEvent;

    return-object v0
.end method
