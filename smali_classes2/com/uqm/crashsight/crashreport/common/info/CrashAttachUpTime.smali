.class public Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/StringBuilder;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 31
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    .line 32
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    .line 33
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    .line 34
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    .line 35
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    .line 36
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    .line 37
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    .line 38
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    .line 39
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    .line 40
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 31
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    .line 32
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    .line 33
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    .line 34
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    .line 35
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    .line 36
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    .line 37
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    .line 38
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    .line 39
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    .line 40
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->t:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 74
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 147
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[attach] saveZipStartError ..."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 148
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    .line 150
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[attach] saveCodeMsg ..."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 85
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[attach] saveCopyError ..."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 128
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 129
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 157
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[attach] saveZipEnd ..."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    .line 160
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[attach] appendLog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 199
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->t:Z

    const-string v3, "\n"

    if-eqz v2, :cond_0

    .line 200
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "[yyyy-MM-dd HH:mm:ss:SSS]"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 201
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->t:Z

    goto :goto_0

    .line 205
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "[ss:SSS]"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 206
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[attach] saveUploadEnd ..."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    .line 178
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final d()V
    .locals 8

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    .line 291
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach_up_time_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v3, 0x3ec

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;Z)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 297
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "[attach] save attach up time success, key=[%s]"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "[attach] save attach up time failed, key=[%s]"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 20

    move-object/from16 v0, p0

    .line 324
    sget-boolean v1, Lcom/uqm/crashsight/proguard/q;->b:Z

    if-nez v1, :cond_0

    return-void

    .line 327
    :cond_0
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    .line 342
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    iget-wide v7, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    .line 344
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    iget-wide v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    sub-long/2addr v9, v11

    .line 345
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    iget-wide v12, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    sub-long/2addr v10, v12

    .line 346
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    iget-wide v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    sub-long/2addr v11, v13

    .line 347
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    .line 348
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    iget-wide v12, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    sub-long/2addr v14, v12

    .line 349
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    move-object v15, v11

    move-object/from16 v18, v12

    iget-wide v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    sub-long/2addr v13, v11

    .line 350
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    iget v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 351
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v1, v0, v19

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v15, v0, v1

    const/16 v1, 0xb

    aput-object v16, v0, v1

    const/16 v1, 0xc

    aput-object v17, v0, v1

    const/16 v1, 0xd

    aput-object v18, v0, v1

    const/16 v1, 0xe

    aput-object v11, v0, v1

    const/16 v1, 0xf

    aput-object v12, v0, v1

    const/16 v1, 0x10

    aput-object v13, v0, v1

    const/16 v1, 0x11

    aput-object v14, v0, v1

    .line 327
    const-string v1, "[attach] CrashAttachUpTime\ntype=[%d]\nretCode=[%d]\nretMsg=[%s]\nattachSize=[%d]\nzipAttachSize=[%d]\nnetworkType=[%s]\nstartTime=[%d]ms\nendTime=[%d]ms\ntime=[%d]ms\ncopyTime=[%d]ms\nzipTime=[%d]ms\nuploadStartTime=[%d]ms\nuploadEndTime=[%d]ms\nuploadTime=[%d]ms\ndeleteTime=[%d]ms\nexpUid=[%s]\nnextOperation=[%d]\nlog=[%s]\n"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 228
    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->s:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
