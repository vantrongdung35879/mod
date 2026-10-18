.class public Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
.super Ljava/lang/Object;
.source "FBMessageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontentUrl(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdata(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdescription(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageUrl(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
    .locals 2

    .line 60
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData-IA;)V

    return-object v0
.end method

.method public contentUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method
