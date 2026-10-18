.class public Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
.super Ljava/lang/Object;
.source "FBMessageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    }
.end annotation


# instance fields
.field public final contentUrl:Ljava/lang/String;

.field public final data:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgetuid(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->uid:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgettitle(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->title:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgetdescription(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->description:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgetcontentUrl(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->contentUrl:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgetimageUrl(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->imageUrl:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->-$$Nest$fgetdata(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->data:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)V

    return-void
.end method
