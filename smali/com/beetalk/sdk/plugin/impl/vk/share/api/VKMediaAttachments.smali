.class public abstract Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;
.super Ljava/lang/Object;
.source "VKMediaAttachments.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;",
        "Landroid/os/Parcelable;",
        "()V",
        "getAttachmentIds",
        "",
        "",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "Companion",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments;",
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
.field public static final Companion:Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments$Companion;

.field public static final RETRY_COUNT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;->Companion:Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttachmentIds(Lcom/vk/api/sdk/VKApiManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/VKApiManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation
.end method
