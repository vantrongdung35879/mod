.class public final enum Lcom/gme/video/sdk/edit/model/TrackType;
.super Ljava/lang/Enum;
.source "TrackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/edit/model/TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/edit/model/TrackType;

.field public static final enum AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

.field public static final enum SUBTITLE:Lcom/gme/video/sdk/edit/model/TrackType;

.field public static final enum VIDEO:Lcom/gme/video/sdk/edit/model/TrackType;


# instance fields
.field private final mIndex:I

.field private final mMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/gme/video/sdk/edit/model/TrackType;

    const-string/jumbo v1, "video"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/gme/video/sdk/edit/model/TrackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/gme/video/sdk/edit/model/TrackType;->VIDEO:Lcom/gme/video/sdk/edit/model/TrackType;

    .line 9
    new-instance v1, Lcom/gme/video/sdk/edit/model/TrackType;

    const-string v2, "audio"

    const-string v5, "AUDIO"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lcom/gme/video/sdk/edit/model/TrackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/gme/video/sdk/edit/model/TrackType;->AUDIO:Lcom/gme/video/sdk/edit/model/TrackType;

    .line 10
    new-instance v2, Lcom/gme/video/sdk/edit/model/TrackType;

    const-string/jumbo v5, "subtitle"

    const-string v7, "SUBTITLE"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v5}, Lcom/gme/video/sdk/edit/model/TrackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/gme/video/sdk/edit/model/TrackType;->SUBTITLE:Lcom/gme/video/sdk/edit/model/TrackType;

    .line 6
    new-array v5, v8, [Lcom/gme/video/sdk/edit/model/TrackType;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    sput-object v5, Lcom/gme/video/sdk/edit/model/TrackType;->$VALUES:[Lcom/gme/video/sdk/edit/model/TrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/gme/video/sdk/edit/model/TrackType;->mIndex:I

    .line 17
    iput-object p4, p0, Lcom/gme/video/sdk/edit/model/TrackType;->mMime:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/edit/model/TrackType;
    .locals 1

    .line 6
    const-class v0, Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/edit/model/TrackType;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/edit/model/TrackType;
    .locals 1

    .line 6
    sget-object v0, Lcom/gme/video/sdk/edit/model/TrackType;->$VALUES:[Lcom/gme/video/sdk/edit/model/TrackType;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/edit/model/TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/edit/model/TrackType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/gme/video/sdk/edit/model/TrackType;->mIndex:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/gme/video/sdk/edit/model/TrackType;->mMime:Ljava/lang/String;

    return-object v0
.end method
