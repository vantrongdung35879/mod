.class public final Lcom/beetalk/sdk/vk/VkShareDialogParam;
.super Ljava/lang/Object;
.source "VkShareDialogParam.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVkShareDialogParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkShareDialogParam.kt\ncom/beetalk/sdk/vk/VkShareDialogParam\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J7\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0015H\u00d6\u0001J\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001cJ\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0015H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006$"
    }
    d2 = {
        "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
        "Landroid/os/Parcelable;",
        "text",
        "",
        "link",
        "imageUri",
        "Landroid/net/Uri;",
        "videoUri",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V",
        "getImageUri",
        "()Landroid/net/Uri;",
        "getLink",
        "()Ljava/lang/String;",
        "getText",
        "getVideoUri",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "postToVKAsync",
        "Lcom/facebook/bolts/Task;",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;


# instance fields
.field private final imageUri:Landroid/net/Uri;

.field private final link:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final videoUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$pkI4YsXu7wHMysglT5TYBHhMgto(Lcom/beetalk/sdk/vk/VkShareDialogParam;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->postToVKAsync$lambda$1(Lcom/beetalk/sdk/vk/VkShareDialogParam;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->Companion:Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;

    new-instance v0, Lcom/beetalk/sdk/vk/VkShareDialogParam$Creator;

    invoke-direct {v0}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    .line 17
    iput-object p4, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic copy$default(Lcom/beetalk/sdk/vk/VkShareDialogParam;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/Object;)Lcom/beetalk/sdk/vk/VkShareDialogParam;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->copy(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/beetalk/sdk/vk/VkShareDialogParam;

    move-result-object p0

    return-object p0
.end method

.method private static final postToVKAsync$lambda$1(Lcom/beetalk/sdk/vk/VkShareDialogParam;)Ljava/lang/Integer;
    .locals 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;-><init>([Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;

    .line 48
    iget-object v3, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    .line 49
    move-object v4, v1

    check-cast v4, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;

    .line 50
    iget-object v5, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    .line 47
    invoke-direct/range {v2 .. v10}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/vk/api/sdk/internal/ApiCommand;

    .line 46
    invoke-static {v0}, Lcom/vk/api/sdk/VK;->executeSync(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component4()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/beetalk/sdk/vk/VkShareDialogParam;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/beetalk/sdk/vk/VkShareDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    iget-object v3, p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUri()Landroid/net/Uri;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final postToVKAsync()Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v1, Lcom/beetalk/sdk/vk/VkShareDialogParam$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/vk/VkShareDialogParam$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/vk/VkShareDialogParam;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VkShareDialogParam(text="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", link="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", imageUri="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoUri="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->imageUri:Landroid/net/Uri;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->videoUri:Landroid/net/Uri;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
