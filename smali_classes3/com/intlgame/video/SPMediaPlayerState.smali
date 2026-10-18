.class public final enum Lcom/intlgame/video/SPMediaPlayerState;
.super Ljava/lang/Enum;
.source "SPMediaPlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/video/SPMediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateComplete:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateError:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateInterrupt:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStatePrepared:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStatePreparing:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateStopped:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateUnknown:Lcom/intlgame/video/SPMediaPlayerState;

.field public static final enum SPMediaPlayerStateUserPaused:Lcom/intlgame/video/SPMediaPlayerState;


# direct methods
.method private static synthetic $values()[Lcom/intlgame/video/SPMediaPlayerState;
    .locals 3

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [Lcom/intlgame/video/SPMediaPlayerState;

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUnknown:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePreparing:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePrepared:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUserPaused:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateInterrupt:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateStopped:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateComplete:Lcom/intlgame/video/SPMediaPlayerState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateError:Lcom/intlgame/video/SPMediaPlayerState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUnknown:Lcom/intlgame/video/SPMediaPlayerState;

    .line 8
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStatePreparing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePreparing:Lcom/intlgame/video/SPMediaPlayerState;

    .line 9
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStatePrepared"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePrepared:Lcom/intlgame/video/SPMediaPlayerState;

    .line 10
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStatePlaying"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStatePlaying:Lcom/intlgame/video/SPMediaPlayerState;

    .line 11
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateUserPaused"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateUserPaused:Lcom/intlgame/video/SPMediaPlayerState;

    .line 12
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateInterrupt"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateInterrupt:Lcom/intlgame/video/SPMediaPlayerState;

    .line 13
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateStopped"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateStopped:Lcom/intlgame/video/SPMediaPlayerState;

    .line 14
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateComplete"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateComplete:Lcom/intlgame/video/SPMediaPlayerState;

    .line 15
    new-instance v0, Lcom/intlgame/video/SPMediaPlayerState;

    const-string v1, "SPMediaPlayerStateError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/SPMediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->SPMediaPlayerStateError:Lcom/intlgame/video/SPMediaPlayerState;

    .line 6
    invoke-static {}, Lcom/intlgame/video/SPMediaPlayerState;->$values()[Lcom/intlgame/video/SPMediaPlayerState;

    move-result-object v0

    sput-object v0, Lcom/intlgame/video/SPMediaPlayerState;->$VALUES:[Lcom/intlgame/video/SPMediaPlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/video/SPMediaPlayerState;
    .locals 1

    .line 6
    const-class v0, Lcom/intlgame/video/SPMediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/video/SPMediaPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/video/SPMediaPlayerState;
    .locals 1

    .line 6
    sget-object v0, Lcom/intlgame/video/SPMediaPlayerState;->$VALUES:[Lcom/intlgame/video/SPMediaPlayerState;

    invoke-virtual {v0}, [Lcom/intlgame/video/SPMediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/video/SPMediaPlayerState;

    return-object v0
.end method
