.class public Lcom/beetalk/sdk/twitter/TwitterPostItem;
.super Ljava/lang/Object;
.source "TwitterPostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    }
.end annotation


# instance fields
.field public final imagePath:Ljava/lang/String;

.field public final link:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->-$$Nest$fgetlink(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->-$$Nest$fgettext(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->-$$Nest$fgetimagePath(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->-$$Nest$fgetvideoPath(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;Lcom/beetalk/sdk/twitter/TwitterPostItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;-><init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0xa

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getVideoUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
