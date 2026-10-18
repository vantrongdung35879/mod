.class public final enum Lcom/intlgame/video/INTLVideoPlayer$SourceType;
.super Ljava/lang/Enum;
.source "INTLVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/video/INTLVideoPlayer$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/video/INTLVideoPlayer$SourceType;

.field public static final enum LiveStream:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

.field public static final enum LocalVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

.field public static final enum OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;


# direct methods
.method private static synthetic $values()[Lcom/intlgame/video/INTLVideoPlayer$SourceType;
    .locals 3

    const/4 v0, 0x3

    .line 112
    new-array v0, v0, [Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LiveStream:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LocalVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const-string v1, "LiveStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LiveStream:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    .line 114
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const-string v1, "OnlineVideo"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->OnlineVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    .line 115
    new-instance v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    const-string v1, "LocalVideo"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/video/INTLVideoPlayer$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->LocalVideo:Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    .line 112
    invoke-static {}, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->$values()[Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    move-result-object v0

    sput-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->$VALUES:[Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/video/INTLVideoPlayer$SourceType;
    .locals 1

    .line 112
    const-class v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/video/INTLVideoPlayer$SourceType;
    .locals 1

    .line 112
    sget-object v0, Lcom/intlgame/video/INTLVideoPlayer$SourceType;->$VALUES:[Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    invoke-virtual {v0}, [Lcom/intlgame/video/INTLVideoPlayer$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/video/INTLVideoPlayer$SourceType;

    return-object v0
.end method
