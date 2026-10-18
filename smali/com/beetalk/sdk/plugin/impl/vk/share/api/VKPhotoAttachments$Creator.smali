.class public final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$Creator;
.super Ljava/lang/Object;
.source "VKPhotoAttachments.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    const-class v3, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    invoke-direct {p1, v1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;-><init>([Landroid/net/Uri;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
    .locals 0

    new-array p1, p1, [Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$Creator;->newArray(I)[Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;

    move-result-object p1

    return-object p1
.end method
