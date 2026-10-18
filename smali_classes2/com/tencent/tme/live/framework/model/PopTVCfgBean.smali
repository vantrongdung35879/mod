.class public Lcom/tencent/tme/live/framework/model/PopTVCfgBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/tme/live/framework/model/PopTVCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field public static p:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/framework/model/PopTVCfgBean$a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->l:I

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->m:I

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->n:I

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->l:I

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->m:I

    iput v1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->n:I

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget p2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
