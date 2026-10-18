.class public Lcom/beetalk/sdk/line/LinePostItem$Builder;
.super Ljava/lang/Object;
.source "LinePostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/line/LinePostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private imagePath:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field private videoPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetimagePath(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlink(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessage(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoPath(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/beetalk/sdk/line/LinePostItem$PostType;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/line/LinePostItem;
    .locals 2

    .line 77
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/line/LinePostItem;-><init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;Lcom/beetalk/sdk/line/LinePostItem-IA;)V

    return-object v0
.end method

.method public imagePath(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method public link(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public videoPath(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method
