.class final enum Lcom/intlgame/video/INTLVideoPlayer$State;
.super Ljava/lang/Enum;
.source "INTLVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/video/INTLVideoPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum Preparing:Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

.field public static final enum SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;


# direct methods
.method private static synthetic $values()[Lcom/intlgame/video/INTLVideoPlayer$State;
    .locals 3

    const/4 v0, 0x6

    .line 118
    new-array v0, v0, [Lcom/intlgame/video/INTLVideoPlayer$State;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Preparing:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$State;->Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 119
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Idle:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 120
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "Preparing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Preparing:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 121
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "Playing"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Playing:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 122
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "Paused"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Paused:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 123
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "SwitchingQuality"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->SwitchingQuality:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 124
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    const-string v1, "Retry"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->Retry:Lcom/intlgame/video/INTLVideoPlayer$State;

    .line 118
    invoke-static {}, Lcom/intlgame/video/INTLVideoPlayer$State;->$values()[Lcom/intlgame/video/INTLVideoPlayer$State;

    move-result-object v0

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->$VALUES:[Lcom/intlgame/video/INTLVideoPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/video/INTLVideoPlayer$State;
    .locals 1

    .line 118
    const-class v0, Lcom/intlgame/video/INTLVideoPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/video/INTLVideoPlayer$State;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/video/INTLVideoPlayer$State;
    .locals 1

    .line 118
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$State;->$VALUES:[Lcom/intlgame/video/INTLVideoPlayer$State;

    invoke-virtual {v0}, [Lcom/intlgame/video/INTLVideoPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/video/INTLVideoPlayer$State;

    return-object v0
.end method
