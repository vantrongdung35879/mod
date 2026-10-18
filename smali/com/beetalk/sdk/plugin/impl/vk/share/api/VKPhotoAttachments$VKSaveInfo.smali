.class final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;
.super Ljava/lang/Object;
.source "VKPhotoAttachments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VKSaveInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;",
        "",
        "id",
        "",
        "ownerId",
        "(II)V",
        "attachment",
        "",
        "getAttachment",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getOwnerId",
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


# instance fields
.field private final attachment:Ljava/lang/String;

.field private final id:I

.field private final ownerId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->id:I

    iput p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->ownerId:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->attachment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAttachment()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->attachment:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->id:I

    return v0
.end method

.method public final getOwnerId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->ownerId:I

    return v0
.end method
