.class public final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
.super Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;
.source "VKPhotoAttachments.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$FileUploadInfoParser;,
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;,
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$ServerUploadInfoParser;,
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKFileUploadInfo;,
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;,
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKPhotoAttachments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKPhotoAttachments.kt\ncom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,130:1\n11065#2:131\n11400#2,3:132\n*S KotlinDebug\n*F\n+ 1 VKPhotoAttachments.kt\ncom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments\n*L\n38#1:131\n38#1:132,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001:\u0006\u0018\u0019\u001a\u001b\u001c\u001dB\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0008H\u00d6\u0001J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0002J \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u00d6\u0001R\u0018\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;",
        "images",
        "",
        "Landroid/net/Uri;",
        "([Landroid/net/Uri;)V",
        "[Landroid/net/Uri;",
        "describeContents",
        "",
        "getAttachmentIds",
        "",
        "",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "getServerUploadInfo",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;",
        "uploadPhoto",
        "uri",
        "serverUploadInfo",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "FileUploadInfoParser",
        "SaveInfoParser",
        "ServerUploadInfoParser",
        "VKFileUploadInfo",
        "VKSaveInfo",
        "VKServerUploadInfo",
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
            "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final images:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$Creator;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/Uri;)V
    .locals 1

    const-string v0, "images"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->images:[Landroid/net/Uri;

    return-void
.end method

.method private final getServerUploadInfo(Lcom/vk/api/sdk/VKApiManager;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;
    .locals 2

    .line 44
    new-instance v0, Lcom/vk/api/sdk/VKMethodCall$Builder;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;-><init>()V

    .line 45
    const-string v1, "photos.getWallUploadServer"

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->method(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/VKApiConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->version(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->build()Lcom/vk/api/sdk/VKMethodCall;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$ServerUploadInfoParser;

    invoke-direct {v1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$ServerUploadInfoParser;-><init>()V

    check-cast v1, Lcom/vk/api/sdk/VKApiJSONResponseParser;

    invoke-virtual {p1, v0, v1}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiJSONResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;

    return-object p1
.end method

.method private final uploadPhoto(Landroid/net/Uri;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Lcom/vk/api/sdk/VKHttpPostCall$Builder;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;-><init>()V

    .line 57
    invoke-virtual {p2}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;->getUploadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;->url(Ljava/lang/String;)Lcom/vk/api/sdk/VKHttpPostCall$Builder;

    move-result-object p2

    .line 58
    const-string v0, "image.jpg"

    const-string v1, "photo"

    invoke-virtual {p2, v1, p1, v0}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;->args(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/vk/api/sdk/VKHttpPostCall$Builder;

    move-result-object p1

    .line 59
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;->timeout(J)Lcom/vk/api/sdk/VKHttpPostCall$Builder;

    move-result-object p1

    const/4 p2, 0x3

    .line 60
    invoke-virtual {p1, p2}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;->retryCount(I)Lcom/vk/api/sdk/VKHttpPostCall$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKHttpPostCall$Builder;->build()Lcom/vk/api/sdk/VKHttpPostCall;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$FileUploadInfoParser;

    invoke-direct {p2}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$FileUploadInfoParser;-><init>()V

    check-cast p2, Lcom/vk/api/sdk/VKApiJSONResponseParser;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/VKApiJSONResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKFileUploadInfo;

    .line 64
    new-instance p2, Lcom/vk/api/sdk/VKMethodCall$Builder;

    invoke-direct {p2}, Lcom/vk/api/sdk/VKMethodCall$Builder;-><init>()V

    .line 65
    const-string v0, "photos.saveWallPhoto"

    invoke-virtual {p2, v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->method(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKFileUploadInfo;->getServer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "server"

    invoke-virtual {p2, v2, v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKFileUploadInfo;->getPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object p2

    .line 68
    const-string v0, "hash"

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKFileUploadInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vk/api/sdk/VKApiConfig;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/api/sdk/VKMethodCall$Builder;->version(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->build()Lcom/vk/api/sdk/VKMethodCall;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;

    invoke-direct {p2}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;-><init>()V

    check-cast p2, Lcom/vk/api/sdk/VKApiJSONResponseParser;

    invoke-virtual {p3, p1, p2}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiJSONResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;->getAttachment()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentIds(Lcom/vk/api/sdk/VKApiManager;)Ljava/util/List;
    .locals 6
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

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->getServerUploadInfo(Lcom/vk/api/sdk/VKApiManager;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->images:[Landroid/net/Uri;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 132
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 39
    invoke-direct {p0, v5, v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->uploadPhoto(Landroid/net/Uri;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKServerUploadInfo;Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_0
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;->images:[Landroid/net/Uri;

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
