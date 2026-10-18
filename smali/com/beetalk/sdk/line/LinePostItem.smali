.class public Lcom/beetalk/sdk/line/LinePostItem;
.super Ljava/lang/Object;
.source "LinePostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/line/LinePostItem$Builder;,
        Lcom/beetalk/sdk/line/LinePostItem$PostType;
    }
.end annotation


# instance fields
.field public final imagePath:Ljava/lang/String;

.field public final link:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public final videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->-$$Nest$fgettype(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Lcom/beetalk/sdk/line/LinePostItem$PostType;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    .line 39
    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->-$$Nest$fgetmessage(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->message:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->-$$Nest$fgetlink(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->link:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->-$$Nest$fgetimagePath(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->imagePath:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->-$$Nest$fgetvideoPath(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem;->videoPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;Lcom/beetalk/sdk/line/LinePostItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/line/LinePostItem;-><init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;)V

    return-void
.end method
