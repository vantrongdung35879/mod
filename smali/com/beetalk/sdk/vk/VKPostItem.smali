.class public Lcom/beetalk/sdk/vk/VKPostItem;
.super Ljava/lang/Object;
.source "VKPostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/vk/VKPostItem$Builder;
    }
.end annotation


# instance fields
.field public final imageContent:Lcom/garena/android/share/model/ShareImageContent;

.field public final link:Ljava/lang/String;

.field public final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->-$$Nest$fgetmessage(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->message:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->-$$Nest$fgetlink(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->link:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->-$$Nest$fgetimageContent(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Lcom/garena/android/share/model/ShareImageContent;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKPostItem;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;Lcom/beetalk/sdk/vk/VKPostItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKPostItem;-><init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)V

    return-void
.end method
